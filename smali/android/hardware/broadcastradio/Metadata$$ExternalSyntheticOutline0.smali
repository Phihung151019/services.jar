.class public abstract synthetic Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    return-object v0
.end method
