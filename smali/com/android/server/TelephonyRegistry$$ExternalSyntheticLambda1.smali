.class public final synthetic Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/TelephonyRegistry;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/TelephonyRegistry;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/LocationAccessPolicy;->getLocationBypassPackages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
