.class public final Lcom/android/server/usb/DualOutputStreamDumpSink;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDumpOutputStream:Lcom/android/internal/util/dump/DualDumpOutputStream;

.field public final mId:J


# direct methods
.method public constructor <init>(Lcom/android/internal/util/dump/DualDumpOutputStream;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/DualOutputStreamDumpSink;->mDumpOutputStream:Lcom/android/internal/util/dump/DualDumpOutputStream;

    iput-wide p2, p0, Lcom/android/server/usb/DualOutputStreamDumpSink;->mId:J

    return-void
.end method
