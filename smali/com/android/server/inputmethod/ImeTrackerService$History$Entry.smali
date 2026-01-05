.class public final Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mDuration:J

.field public final mFromUser:Z

.field public final mOrigin:I

.field public mPhase:I

.field public final mReason:I

.field public mRequestWindowName:Ljava/lang/String;

.field public final mSequenceNumber:I

.field public final mStartTime:J

.field public mStatus:I

.field public final mTag:Ljava/lang/String;

.field public final mType:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/inputmethod/ImeTrackerService$History;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mSequenceNumber:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mDuration:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    const-string/jumbo v0, "not set"

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mRequestWindowName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mUid:I

    iput p2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mType:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    iput p4, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mOrigin:I

    iput p5, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mReason:I

    iput-boolean p6, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFromUser:Z

    return-void
.end method
