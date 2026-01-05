.class public final Lcom/android/server/biometrics/AuthenticationStats;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mEnrollmentNotifications:I

.field public mLastEnrollmentTime:J

.field public mLastFrrNotificationTime:J

.field public final mModality:I

.field public mRejectedAttempts:I

.field public mTotalAttempts:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    iput-wide v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    return-void
.end method

.method public constructor <init>(IIIIIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    iput p3, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    iput p4, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    iput-wide p6, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    iput-wide p8, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    iput p5, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/server/biometrics/AuthenticationStats;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/android/server/biometrics/AuthenticationStats;

    iget v0, p1, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    iget v1, p1, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    iget v1, p1, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    iget v1, p1, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    iget-wide v2, p1, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    iget-wide v2, p1, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    iget p1, p1, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    if-ne p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "userId: %d, totalAttempts: %d, rejectedAttempts: %d, enrollmentNotifications: %d, modality: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
