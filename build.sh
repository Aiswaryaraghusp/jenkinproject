chmod 400 KUBE-INFRA-KP.pem
scp -i "KUBE-INFRA-KP.pem" web/* ubuntu@ec2-13-235-69-97.ap-south-1.compute.amazonaws.com/usr/share/html
ssh -i "KUBE-INFRA-KP.pem" ubuntu@ec2-13-235-69-97.ap-south-1.compute.amazonaws.com 'sudo systemctl restart nginx'