.class public interface abstract Lcom/android/server/biometrics/sensors/BiometricServiceProvider;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract containsSensor(I)Z
.end method

.method public abstract dumpInternal(ILjava/io/PrintWriter;)V
.end method

.method public abstract dumpProtoMetrics()V
.end method

.method public abstract dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
.end method

.method public abstract getAuthenticatorId(II)J
.end method

.method public abstract getLockoutModeForUser(II)I
.end method

.method public abstract getSensorProperties(I)Landroid/hardware/biometrics/SensorPropertiesInternal;
.end method

.method public abstract getSensorProperties()Ljava/util/List;
.end method

.method public abstract hasEnrollments(II)Z
.end method

.method public abstract isHardwareDetected(I)Z
.end method
