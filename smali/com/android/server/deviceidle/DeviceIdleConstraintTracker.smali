.class public final Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public active:Z

.field public final minState:I

.field public monitoring:Z

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    iput-boolean v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    iput-object p1, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    return-void
.end method
