.class public final Lcom/android/server/am/ProcessStatsService$3;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field public final synthetic val$section:I

.field public final synthetic val$stats:Lcom/android/internal/app/procstats/ProcessStats;


# direct methods
.method public constructor <init>([Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService$3;->val$stats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p3, p0, Lcom/android/server/am/ProcessStatsService$3;->val$section:I

    const-string/jumbo p1, "ProcessStats pipe output"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService$3;->val$stats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget p0, p0, Lcom/android/server/am/ProcessStatsService$3;->val$section:I

    invoke-virtual {v2, v1, v3, v4, p0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "ProcessStatsService"

    const-string v1, "Failure writing pipe"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
