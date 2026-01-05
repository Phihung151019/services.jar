.class public final Lcom/android/server/devicepolicy/LockTaskPolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 3

    const/4 p0, 0x0

    const-string/jumbo v0, "packages"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LockTaskPolicySerializer"

    if-nez v0, :cond_0

    const-string p1, "Error parsing LockTask policy value."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    :try_start_0
    const-string/jumbo v2, "flags"

    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance v2, Landroid/app/admin/LockTaskPolicy;

    invoke-direct {v2, v0, p1}, Landroid/app/admin/LockTaskPolicy;-><init>(Ljava/util/Set;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    const-string v0, "Error parsing LockTask policy value"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public final saveToXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2

    check-cast p1, Landroid/app/admin/LockTaskPolicy;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, ";"

    invoke-virtual {p1}, Landroid/app/admin/LockTaskPolicy;->getPackages()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "packages"

    invoke-interface {p2, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "flags"

    invoke-virtual {p1}, Landroid/app/admin/LockTaskPolicy;->getFlags()I

    move-result p1

    invoke-interface {p2, v0, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
