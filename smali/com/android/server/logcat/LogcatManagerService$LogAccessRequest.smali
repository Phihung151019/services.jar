.class public final Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mFd:I

.field public final mGid:I

.field public final mPid:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iput p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iput p3, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iput p4, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    iget v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v3, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LogAccessRequest{mUid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
