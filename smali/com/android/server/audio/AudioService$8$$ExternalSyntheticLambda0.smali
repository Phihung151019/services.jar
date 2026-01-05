.class public final synthetic Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioServerPermissionProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioServerPermissionProvider;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioServerPermissionProvider;

    iput p2, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioServerPermissionProvider;

    iget v1, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/audio/AudioServerPermissionProvider;->onModifyPackageState(ILjava/lang/String;Z)V

    return-void
.end method
