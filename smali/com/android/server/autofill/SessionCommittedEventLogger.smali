.class public final Lcom/android/server/autofill/SessionCommittedEventLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mSessionId:I

    new-instance p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    iput v1, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    iput v0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveInfoCount:I

    iput v0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveDataTypeCount:I

    iput-boolean v1, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mLastFillResponseHasSaveInfo:Z

    iput v0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mServiceUid:I

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method
