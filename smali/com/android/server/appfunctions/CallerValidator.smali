.class public interface abstract Lcom/android/server/appfunctions/CallerValidator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)Lcom/android/internal/infra/AndroidFuture;
.end method

.method public abstract verifyEnterprisePolicyIsAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
.end method

.method public abstract verifyTargetUserHandle(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/UserHandle;
.end method
