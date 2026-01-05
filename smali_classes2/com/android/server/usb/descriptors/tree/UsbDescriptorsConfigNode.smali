.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;
.super Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

.field public final mInterfaceNodes:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;->mInterfaceNodes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;->mConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    return-void
.end method
