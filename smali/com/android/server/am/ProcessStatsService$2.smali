.class public final Lcom/android/server/am/ProcessStatsService$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessStatsService;

.field public final synthetic val$totalTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessStatsService;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$2;->this$0:Lcom/android/server/am/ProcessStatsService;

    iput-wide p2, p0, Lcom/android/server/am/ProcessStatsService$2;->val$totalTime:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService$2;->this$0:Lcom/android/server/am/ProcessStatsService;

    iget-wide v1, p0, Lcom/android/server/am/ProcessStatsService$2;->val$totalTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    return-void
.end method
