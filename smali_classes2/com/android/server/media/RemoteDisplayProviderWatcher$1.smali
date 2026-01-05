.class public final Lcom/android/server/media/RemoteDisplayProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-boolean p1, Lcom/android/server/media/RemoteDisplayProviderWatcher;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Received package manager broadcast: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "RemoteDisplayProvider"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-static {p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->-$$Nest$mscanPackages(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    return-void
.end method
