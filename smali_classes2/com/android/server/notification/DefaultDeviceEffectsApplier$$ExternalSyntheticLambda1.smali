.class public final synthetic Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

.field public final synthetic f$1:Landroid/service/notification/ZenDeviceEffects;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Landroid/service/notification/ZenDeviceEffects;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    iput-object p2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;->f$1:Landroid/service/notification/ZenDeviceEffects;

    iput p3, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    iget-object v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;->f$1:Landroid/service/notification/ZenDeviceEffects;

    iget p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->$r8$lambda$4LDHIsj0iI2D9FidhGDL9DsNFGA(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Landroid/service/notification/ZenDeviceEffects;I)V

    return-void
.end method
