.class public final synthetic Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p3, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    const-wide/32 v1, 0xaeae033

    invoke-static {v1, v2, v0, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    const-wide/32 v1, 0xafc8f5e

    invoke-static {v1, v2, v0, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    const-wide/32 v1, 0x95f3323

    invoke-static {v1, v2, v0, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    const-wide/32 v1, 0xad3e56b

    invoke-static {v1, v2, v0, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    const-wide/32 v1, 0xae06792

    invoke-static {v1, v2, v0, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
