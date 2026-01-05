.class public final Lcom/android/server/UiModeManagerService$ProjectionHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mPackageName:Ljava/lang/String;

.field public final mProjectionReleaser:Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;

.field public final mProjectionType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionType:I

    iput-object p3, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mBinder:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionReleaser:Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    sget-object v0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Projection holder "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " died. Releasing projection type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionType:I

    const-string v2, "."

    const-string/jumbo v3, "UiModeManager"

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionReleaser:Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;

    iget v1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionType:I

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, v1, p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    return-void
.end method
