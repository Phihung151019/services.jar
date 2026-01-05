.class public interface abstract Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract setAmbientLux(F)V
.end method

.method public abstract shouldListenToLightSensor()Z
.end method

.method public abstract stop()V
.end method
