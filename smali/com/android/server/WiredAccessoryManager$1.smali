.class public final Lcom/android/server/WiredAccessoryManager$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "isBikeMode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-boolean p1, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Lcom/android/server/WiredAccessoryManager$2;

    if-eqz p1, :cond_1

    const-string/jumbo p1, "WiredAccessoryManager"

    const-string v3, "Earphones are disabled in bike mode"

    invoke-static {p1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    move v1, p1

    :cond_2
    :goto_1
    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    const-string/jumbo v3, "h2w"

    invoke-virtual {v2, v0, v1, p1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean p1, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-nez p1, :cond_3

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    :cond_3
    return-void
.end method
