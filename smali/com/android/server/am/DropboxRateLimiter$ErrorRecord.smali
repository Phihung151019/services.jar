.class public final Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCount:I

.field public mStartTime:J

.field public mSuccessiveRateLimitCycles:I

.field public final synthetic this$0:Lcom/android/server/am/DropboxRateLimiter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DropboxRateLimiter;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    iput-wide p2, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    return-void
.end method
