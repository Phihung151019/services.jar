.class public final synthetic Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    packed-switch v0, :pswitch_data_0

    const-string v0, "DeviceOwnerRemoved"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :pswitch_0
    const-string/jumbo v0, "ProfileOwnerRemoved"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
