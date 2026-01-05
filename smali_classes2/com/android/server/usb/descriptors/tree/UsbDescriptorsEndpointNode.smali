.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;
.super Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;->mEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    return-void
.end method
