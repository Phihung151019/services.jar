.class Lcom/android/server/job/controllers/PrefetchController$PcConstants;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final KEY_LAUNCH_TIME_ALLOWANCE_MS:Ljava/lang/String; = "pc_launch_time_allowance_ms"

.field static final KEY_LAUNCH_TIME_THRESHOLD_MS:Ljava/lang/String; = "pc_launch_time_threshold_ms"


# instance fields
.field public LAUNCH_TIME_ALLOWANCE_MS:J

.field public LAUNCH_TIME_THRESHOLD_MS:J

.field public mShouldReevaluateConstraints:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/PrefetchController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_THRESHOLD_MS:J

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_ALLOWANCE_MS:J

    return-void
.end method
