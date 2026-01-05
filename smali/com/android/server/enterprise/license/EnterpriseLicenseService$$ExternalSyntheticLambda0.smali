.class public final synthetic Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Bundle;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    const-string/jumbo v1, "packageRemovedInternal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    const-string/jumbo v1, "licenseValidationInternal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    const-string v1, "KLMRegistrationInternal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    const-string v1, "KLMDeactivationInternal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    const-string v1, "ELMRegistrationInternal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
