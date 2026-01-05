.class public final synthetic Lcom/android/server/input/SysfsNodeMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/SysfsNodeMonitor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/SysfsNodeMonitor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/SysfsNodeMonitor;

    iput p2, p0, Lcom/android/server/input/SysfsNodeMonitor$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/SysfsNodeMonitor;

    iget p0, p0, Lcom/android/server/input/SysfsNodeMonitor$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/server/input/SysfsNodeMonitor;->stopMonitoring(I)V

    return-void
.end method
