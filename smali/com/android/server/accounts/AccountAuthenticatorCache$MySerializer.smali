.class public final Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/pm/XmlSerializerAndParser;


# virtual methods
.method public final createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    const-string/jumbo v0, "type"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    return-object p0
.end method

.method public final writeAsXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1

    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    iget-object p0, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const/4 p1, 0x0

    const-string/jumbo v0, "type"

    invoke-interface {p2, p1, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
