.class public final Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/ExternalDisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ExternalDisplayPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    iget v0, v0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    iput p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    return-void
.end method
