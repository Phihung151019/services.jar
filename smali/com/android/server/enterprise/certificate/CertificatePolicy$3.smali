.class public final Lcom/android/server/enterprise/certificate/CertificatePolicy$3;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field public final synthetic val$adminNotification:Landroid/content/Intent;

.field public final synthetic val$userId:I

.field public final synthetic val$userMsgModName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userId:I

    iput-object p3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userMsgModName:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$adminNotification:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string/jumbo v0, "Sending certificate failure intent to user "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userId:I

    invoke-static {}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManagerAdapter$2()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userId:I

    check-cast v4, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iget-object v3, v3, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iget-boolean v4, v4, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    if-eqz v4, :cond_1

    const-string v4, "CertificatePolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " containing: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userMsgModName:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (module), "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userMsgModName:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (message), "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (userId)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$adminNotification:Landroid/content/Intent;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    invoke-virtual {v0, p0, v4, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
