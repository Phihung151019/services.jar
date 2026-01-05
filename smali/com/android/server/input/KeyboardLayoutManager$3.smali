.class public final Lcom/android/server/input/KeyboardLayoutManager$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;


# instance fields
.field public mDeviceSpecificLayoutAvailable:Z

.field public final synthetic val$imeLanguageTag:Ljava/lang/String;

.field public final synthetic val$keyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

.field public final synthetic val$potentialLayouts:Ljava/util/ArrayList;

.field public final synthetic val$userSelectedLayout:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$keyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    iput-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$imeLanguageTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$userSelectedLayout:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 9

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$keyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    iget-object v0, p2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result p1

    iget-object p2, p2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    check-cast p2, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p2}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->mDeviceSpecificLayoutAvailable:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->mDeviceSpecificLayoutAvailable:Z

    iget-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result p1

    if-ne p1, p2, :cond_8

    iget-boolean p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->mDeviceSpecificLayoutAvailable:Z

    if-nez p1, :cond_8

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$imeLanguageTag:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/input/KeyboardLayoutManager;->getScriptCodes(Ljava/util/Locale;)[I

    move-result-object p2

    array-length v0, p2

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/input/KeyboardLayoutManager;->getScriptCodes(Ljava/util/Locale;)[I

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_6

    aget v5, v2, v4

    array-length v6, p2

    move v7, v0

    :goto_2
    if-ge v7, v6, :cond_5

    aget v8, p2, v7

    if-ne v5, v8, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_8
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$userSelectedLayout:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method
