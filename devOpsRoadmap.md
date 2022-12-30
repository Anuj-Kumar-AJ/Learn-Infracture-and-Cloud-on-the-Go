

<h1>	ROADMAP for DevOps  From saiyam Pathak	</h1>


<h3> <b> PREREQUSITE  </b></h3>



	linux
		ubuntu centOS fedora
			-user management
			- file managemant
			- working with files and directoruy
			- text editor (vim)
			- sustemd
			- processes
			- webserver=  apache http,  nginx
			- proxy = HA proxy, traffic
		- ssh
		- shell Scripting( basic)
	
	Networking
		how system comunicate
		LAN/ WAN
		what is switch, router,  isp 
		Ip addresses , and its Type
		Osi model
		Basic Subnetting
		Dns basic
		switching , routing
		-- Resourses- networking and kubernetes book
	
	YAML
		



<h3> <b> Main section </b></h3>


	
	Git -->  gitlab github

		- how to work with git
		- setup
		- create Repo
		- commit and push code
		- branching stratergies
		- PR
		- public and private Repo
		- pull, rebase, fork, clone


	CLOUD
		-Terms
			- IAAS
			- SAAS
			- PAAS
		- Cloud concepts , BEnifit, infra

		- Any cloud Provider (5 components)
			- Network
			- Stroage
			- Compute
			- IAM
			- Billins
		
		- AWS, Azure, GoogleCLoud, Civo (pic any)


	Virtualization and Container
		
		- VM vs container
		- containerTech (Docker)
		- How to
			- build image
			- push image
			- pull image
			- tag image
			- run image
		
		- OCI, CRI, 
		- vider of making sence of the container runtime landscape in kubernetes
  		- advance Docker Concepts
			- Docker Security
			- dockerFile bestPractices
			- CONSTAINER SCANING
			

	Kubernetes
		must lern for all domain

		- architecture
		- objects
		- secrets
		- configMaps
		- PU, PUC
		- Networking
		- Services


		* mindmap for kubernetes engineer
			- how to setup k8s on compute node using contained
				- HA install
					- using HA proxy 
			
				- using kube VIP
		
				- observability
		
				- Security
		
				- CI/CD
		
				- Service mesh
			
				- auto sCaling
			
				- cheos enginerring
					- chos Mesh , lithmus
			
				- GitOps
					- Flux , ARGO , flees
				
				- backup using vilero 

				- infrastructure provisioning tool
					- teraform
					- pulumi
					- crossplane
					- cluster api (CAPI)

			-Resources
				- civi achedmy, book(k8s up and running -- my choice)
				- ** intro to k8s by linuxFoundation on edx

			- Good Books for indepth knowledge
				- Networking and kubernetes
				- Production kubernetes
				- Hacking kubernetes


	CI / CD		---> 	Github actions and Jenkins

		
		-typical cicd cycle looks like
		
			code commit --> build --> test  --> stage ---> deploy  ---> Release

		- Cd foundation landscape

		- Kubernetes native ( more for kubernetes and SRE )
	
			- gitOps ---> concepts and tooling
				- FLux CD
				- Argo CD
				- Fleet
		- Resources
			- *** cicd weeks by kubsimply chaneel
			-  get certified for gitops and argo
		  	

	Infrastructure as Code (IAC)
		- teraform 
		- CrossPlane
		- Pulumi

		- concepts
			- code to create infracture
			- automate  --> creation updationdeletion infra
			- no manual error
			- no misconfiguration
			- state of your infracture can be seen anytime
		- Resources
			- teraform 2hrs freecodecamp
			- complete hashicorp teraform cretification -- freecodeplan

		- configration management
			- ansible
	
	
	Obseravibility
		- monitoring
			- nagios
			- prometheus (its time series database {TSDB} )
			- thanos for HA
			- Grafana for visulization
		- Logging
				- loki
				- Elastic
		- Tracing
				- Jaegar
		- Profiling
				- Parca
		
						
		concepts
			- what is observability ?
			- Observability pillar
			- Tools
				- setus , and configuration for each tool
				- open Telemetery
				- open Tracing

	
	Chaos engineering
		- chos mesh
		- lithmus
	
	policy
		kubeworden
		OPA
		kyverno
		js Policy

		-  resources
			- kubsimplify ytube
			- styra achedemy
	
	Service mesh
		- Resouces
			- intro to service mesh with linkerd (edX ) LinuxFoundation
		- istio
		- linkerd


	others
		supply chan security
		kubernetes security
		CNCF landScape terminology
		operators
			- what are they
			- how to write k8s operator
		operator SDK

		- resources
			- container security by orelly







	*** CNCF minutes kubeSimplify




























