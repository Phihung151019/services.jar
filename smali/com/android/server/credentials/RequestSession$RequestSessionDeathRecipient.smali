.class public final Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/RequestSession;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/RequestSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;->this$0:Lcom/android/server/credentials/RequestSession;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    const-string v0, "CredentialManager"

    const-string v1, "Client binder died - clearing session"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;->this$0:Lcom/android/server/credentials/RequestSession;

    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    sget-object v1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/credentials/metrics/ApiStatus;->BINDER_DIED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    return-void
.end method
