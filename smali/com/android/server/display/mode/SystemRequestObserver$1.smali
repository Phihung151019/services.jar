.class public final Lcom/android/server/display/mode/SystemRequestObserver$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/SystemRequestObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/SystemRequestObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/SystemRequestObserver$1;->this$0:Lcom/android/server/display/mode/SystemRequestObserver;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "binder died: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SystemRequestObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver$1;->this$0:Lcom/android/server/display/mode/SystemRequestObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/SystemRequestObserver;->removeSystemRequestedVotes(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver$1;->this$0:Lcom/android/server/display/mode/SystemRequestObserver;

    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDeathRecipient:Lcom/android/server/display/mode/SystemRequestObserver$1;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
