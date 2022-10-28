   #!/bin/bash

   }
    ProcursusSourcesSetup(){
        echo "Settings Up Procursus Source ..."
        echo "Types: deb" > /etc/apt/sources.list.d/procursus.sources
        echo "URIs: https://apt.procurs.us/" >> /etc/apt/sources.list.d/procursus.sources
        echo "Suites: iphoneos-arm64/${CFVER}" >> /etc/apt/sources.list.d/procursus.sources
        echo "Components: main" >> /etc/apt/sources.list.d/procursus.sources
    }
