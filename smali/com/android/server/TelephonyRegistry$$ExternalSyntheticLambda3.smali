.class public final synthetic Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/TelephonyRegistry;

.field public final synthetic f$1:Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/TelephonyRegistry;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/TelephonyRegistry;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p0

    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/TelephonyRegistry;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p0

    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
