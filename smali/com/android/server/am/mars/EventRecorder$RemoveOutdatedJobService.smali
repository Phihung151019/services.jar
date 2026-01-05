.class public Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;
.super Landroid/app/job/JobService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public volatile isJobCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const-string/jumbo p1, "RemoveOutdatedJobService"

    const-string/jumbo v0, "onStopJob is called"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z

    return p1
.end method
