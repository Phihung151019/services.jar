.class public interface abstract Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
.end method

.method public abstract startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
.end method

.method public abstract stopDetection(Ljava/lang/String;)V
.end method

.method public abstract unbind()V
.end method
