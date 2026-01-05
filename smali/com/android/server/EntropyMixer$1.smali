.class public final Lcom/android/server/EntropyMixer$1;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/EntropyMixer;


# direct methods
.method public constructor <init>(Lcom/android/server/EntropyMixer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p0, "EntropyMixer"

    const-string/jumbo p1, "Will not process invalid message"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget p1, Lcom/android/server/EntropyMixer;->SEED_FILE_SIZE:I

    iget-object p0, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->updateSeedFile()V

    iget-object p1, p0, Lcom/android/server/EntropyMixer;->mHandler:Lcom/android/server/EntropyMixer$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/EntropyMixer;->mHandler:Lcom/android/server/EntropyMixer$1;

    const-wide/32 v1, 0xa4cb80

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
