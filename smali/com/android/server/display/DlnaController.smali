.class public final Lcom/android/server/display/DlnaController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDevice:Landroid/hardware/display/SemDlnaDevice;

.field public mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/hardware/display/SemDlnaDevice;

    invoke-direct {p1}, Landroid/hardware/display/SemDlnaDevice;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    return-void
.end method
