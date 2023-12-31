#cloud-config
packages:
  - python3
write_files:
  - path: /mount_disks.py
    permissions: '0777'
    content: |
      #!/usr/bin/env python
      import subprocess
      import string

      # Create partition on each disk
      letters = string.ascii_lowercase[string.ascii_lowercase.index('c'):]
      disk_list = [f'sd{letter}' for letter in letters[:3]]  # Only first 3 disks
      mount_list = ${mount_list}

      for i, disk in enumerate(disk_list):
          partition = f"{disk}1"
          mount_point = mount_list[i]

          # Create partition
          subprocess.run(f"parted -a optimal /dev/{disk} --script mklabel gpt mkpart primary ext4 0% 100%", shell=True)

          # Format partition with ext4
          subprocess.run(f"mkfs.ext4 /dev/{partition}", shell=True)

          # Create mount point directory if it doesn't exist
          subprocess.run(f"mkdir -p {mount_point}", shell=True)

          # Mount partition
          subprocess.run(f"mount /dev/{partition} {mount_point}", shell=True)

          # Add to fstab to mount at boot
          blkid = subprocess.check_output(f"blkid -s UUID -o value /dev/{partition}", shell=True).decode().strip()
          with subprocess.Popen(['tee', '-a', '/etc/fstab'], stdin=subprocess.PIPE) as f:
              f.stdin.write(f"UUID={blkid} {mount_point} ext4 defaults,nofail 0 2\n".encode('utf-8'))
runcmd:
  - yum install python3 -y
  - python3 /mount_disks.py
