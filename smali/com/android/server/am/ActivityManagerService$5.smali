.class public final Lcom/android/server/am/ActivityManagerService$5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field public final synthetic val$cpuTime:J

.field public final synthetic val$dyingTime:J

.field public final synthetic val$pid:I


# direct methods
.method public constructor <init>(JILcom/android/server/am/ProcessRecord;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/am/ActivityManagerService$5;->val$dyingTime:J

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$5;->val$pid:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$5;->val$app:Lcom/android/server/am/ProcessRecord;

    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$5;->val$cpuTime:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerService$5;->val$dyingTime:J

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$5;->val$pid:I

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$5;->val$app:Lcom/android/server/am/ProcessRecord;

    move-object v5, v4

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/server/am/ActivityManagerService$5;->val$cpuTime:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->reportApplicationDying(JIILjava/lang/String;J)V

    return-void
.end method
