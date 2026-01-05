.class public final Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAppletHelper:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

.field public final mContext:Landroid/content/Context;

.field public final mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

.field public mSecurityHelper:Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;

.field public mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    new-instance v2, Ljava/util/ArrayList;

    const-string/jumbo v3, "com.sec.smartcard.manager"

    const-string/jumbo v4, "com.samsung.ucs.agent.boot"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/samsung/ucm/ucmservice/PolicyManager;->hiddenPluginPackages:Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    return-void
.end method
