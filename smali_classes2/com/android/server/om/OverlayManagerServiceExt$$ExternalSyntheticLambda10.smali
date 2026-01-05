.class public final synthetic Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerServiceExt;

.field public final synthetic f$1:Landroid/content/om/OverlayInfoExt;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/om/ISamsungOverlayCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerServiceExt;Landroid/content/om/OverlayInfoExt;ILandroid/content/om/ISamsungOverlayCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$1:Landroid/content/om/OverlayInfoExt;

    iput p3, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$2:I

    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$3:Landroid/content/om/ISamsungOverlayCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$1:Landroid/content/om/OverlayInfoExt;

    iget v2, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$2:I

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$3:Landroid/content/om/ISamsungOverlayCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1}, Landroid/content/om/OverlayInfoExt;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/server/om/OverlayManagerSettings;->getState(Landroid/content/om/OverlayIdentifier;I)I

    move-result v0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    :goto_0
    :try_start_1
    iget-object v1, v1, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object v2, v1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v2, v1, v0}, Landroid/content/om/ISamsungOverlayCallback;->onOverlayStateChanged(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
