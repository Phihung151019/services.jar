.class public final Lcom/android/server/display/SmallAreaDetectionController$OnPropertiesChangedListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/SmallAreaDetectionController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/SmallAreaDetectionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController$OnPropertiesChangedListener;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "small_area_detection_allowlist"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/SmallAreaDetectionController$OnPropertiesChangedListener;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/SmallAreaDetectionController;->updateAllowlist(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
