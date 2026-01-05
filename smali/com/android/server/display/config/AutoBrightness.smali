.class public final Lcom/android/server/display/config/AutoBrightness;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public brighteningLightDebounceIdleMillis:Ljava/math/BigInteger;

.field public brighteningLightDebounceMillis:Ljava/math/BigInteger;

.field public darkeningLightDebounceIdleMillis:Ljava/math/BigInteger;

.field public darkeningLightDebounceMillis:Ljava/math/BigInteger;

.field public enabled:Ljava/lang/Boolean;

.field public idleStylusTimeoutMillis:Ljava/math/BigInteger;

.field public luxToBrightnessMapping:Ljava/util/List;


# virtual methods
.method public final getLuxToBrightnessMapping()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/AutoBrightness;->luxToBrightnessMapping:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/AutoBrightness;->luxToBrightnessMapping:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/config/AutoBrightness;->luxToBrightnessMapping:Ljava/util/List;

    return-object p0
.end method
