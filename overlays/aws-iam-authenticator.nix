self: super: {

  aws-iam-authenticator = super.aws-iam-authenticator.overrideAttrs (oldAttrs: {
    
    version = "v0.4.0";
    src = builtins.fetchGit {
      url = https://github.com/kubernetes-sigs/aws-iam-authenticator.git;
    };

    runVend = true;
 # subPackages = [ "." ];

  });

}