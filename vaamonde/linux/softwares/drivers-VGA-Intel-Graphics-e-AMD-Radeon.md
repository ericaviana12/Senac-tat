#Rota criada pelo professor Robson Vaamonde - Técnico de Informática / Senac Tatuapé

____________________

#Instalação dos Drivers de vídeo

```
sudo apt update
sudo apt install vainfo intel-gpu-tools mesa-opencl-icd mesa-utils-extra
sudo apt install libegl1-mesa libgl1-mesa-glx libgles2-mesa libassimp5
```

#Reinicializar o Sistema

```
sudo reboot
```

#Testando o suporte ao Driver da Intel Mesa

```
sudo glxinfo | less
sudo glxgears
```

#Software de Benchmark para GNU/Linux para Testar Desempenho
 - PassMark: https://www.passmark.com/products/pt_linux/index.php
 - Hardinfo: https://github.com/lpereira/hardinfo
 - Unigine.: https://benchmark.unigine.com/
 - GpuTest.: https://www.geeks3d.com/gputest/
