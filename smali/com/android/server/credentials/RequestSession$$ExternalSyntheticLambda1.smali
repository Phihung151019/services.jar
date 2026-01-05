.class public final synthetic Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/credentials/RequestSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/RequestSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/RequestSession;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 8

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/RequestSession;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CredentialManager"

    const-string v1, "Cancellation invoked from the client - clearing session"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    iget-object v1, v0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    sget-object v2, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->USER_INTERACTION:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {v6}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    invoke-static {v7, v5, v3, v6, v0}, Landroid/credentials/selection/IntentFactory;->createCancelUiIntent(Landroid/content/Context;Landroid/os/IBinder;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget v5, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v3

    sget-object v1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    return-void
.end method
