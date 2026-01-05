.class public final Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver$1;

    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;->mReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver$1;

    return-void
.end method
