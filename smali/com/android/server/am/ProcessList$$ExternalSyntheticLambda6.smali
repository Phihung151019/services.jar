.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/ProcessList;

    return-void
.end method


# virtual methods
.method public final onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 4

    iget-object p0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/ProcessList;

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    const/4 v2, 0x1

    and-int/2addr p2, v2

    if-eqz p2, :cond_0

    :try_start_0
    array-length p2, v1

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, p2}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p1

    if-lez p1, :cond_0

    array-length p2, v0

    invoke-static {v1, p1, v0}, Lcom/android/internal/os/Zygote;->nativeParseSigChld([BI[I)I

    move-result p1

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    aget p1, v0, v3

    aget p2, v0, v2

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception in reading unsolicited zygote message: "

    const-string p2, "ActivityManager"

    invoke-static {p0, p1, p2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2
.end method
