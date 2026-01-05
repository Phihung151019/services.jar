.class public final synthetic Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AutomaticBrightnessController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AutomaticBrightnessController;

    check-cast p1, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mLux:F

    iget p1, p1, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mBrightness:F

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(FF)Z

    return-void
.end method
