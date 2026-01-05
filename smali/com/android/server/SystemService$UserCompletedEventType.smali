.class public final Lcom/android/server/SystemService$UserCompletedEventType;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final EVENT_TYPE_USER_STARTING:I = 0x1

.field public static final EVENT_TYPE_USER_SWITCHING:I = 0x4

.field public static final EVENT_TYPE_USER_UNLOCKED:I = 0x2


# instance fields
.field public final mEventType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/SystemService$UserCompletedEventType;->mEventType:I

    return-void
.end method

.method public static newUserCompletedEventTypeForTest(I)Lcom/android/server/SystemService$UserCompletedEventType;
    .locals 1

    new-instance v0, Lcom/android/server/SystemService$UserCompletedEventType;

    invoke-direct {v0, p0}, Lcom/android/server/SystemService$UserCompletedEventType;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public includesOnUserStarting()Z
    .locals 1

    iget p0, p0, Lcom/android/server/SystemService$UserCompletedEventType;->mEventType:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public includesOnUserSwitching()Z
    .locals 0

    iget p0, p0, Lcom/android/server/SystemService$UserCompletedEventType;->mEventType:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public includesOnUserUnlocked()Z
    .locals 0

    iget p0, p0, Lcom/android/server/SystemService$UserCompletedEventType;->mEventType:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserSwitching()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "|Switching"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "|Unlocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserStarting()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "|Starting"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_3

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
