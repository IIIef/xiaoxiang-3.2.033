.class final Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;
.super Ljava/lang/Object;
.source "OpenJdkSelfSignedCertGenerator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generate(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/SecureRandom;Ljava/util/Date;Ljava/util/Date;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "issuer"

    const-string v1, "subject"

    .line 47
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    .line 50
    new-instance v3, Lsun/security/x509/X509CertInfo;

    invoke-direct {v3}, Lsun/security/x509/X509CertInfo;-><init>()V

    .line 51
    new-instance v4, Lsun/security/x509/X500Name;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v5, Lsun/security/x509/CertificateVersion;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lsun/security/x509/CertificateVersion;-><init>(I)V

    const-string v6, "version"

    invoke-virtual {v3, v6, v5}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    new-instance v5, Lsun/security/x509/CertificateSerialNumber;

    new-instance v6, Ljava/math/BigInteger;

    const/16 v7, 0x40

    invoke-direct {v6, v7, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-direct {v5, v6}, Lsun/security/x509/CertificateSerialNumber;-><init>(Ljava/math/BigInteger;)V

    const-string p2, "serialNumber"

    invoke-virtual {v3, p2, v5}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :try_start_0
    new-instance p2, Lsun/security/x509/CertificateSubjectName;

    invoke-direct {p2, v4}, Lsun/security/x509/CertificateSubjectName;-><init>(Lsun/security/x509/X500Name;)V

    invoke-virtual {v3, v1, p2}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    invoke-virtual {v3, v1, v4}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :goto_0
    :try_start_1
    new-instance p2, Lsun/security/x509/CertificateIssuerName;

    invoke-direct {p2, v4}, Lsun/security/x509/CertificateIssuerName;-><init>(Lsun/security/x509/X500Name;)V

    invoke-virtual {v3, v0, p2}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 62
    :catch_1
    invoke-virtual {v3, v0, v4}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    :goto_1
    new-instance p2, Lsun/security/x509/CertificateValidity;

    invoke-direct {p2, p3, p4}, Lsun/security/x509/CertificateValidity;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    const-string p3, "validity"

    invoke-virtual {v3, p3, p2}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    new-instance p2, Lsun/security/x509/CertificateX509Key;

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p3

    invoke-direct {p2, p3}, Lsun/security/x509/CertificateX509Key;-><init>(Ljava/security/PublicKey;)V

    const-string p3, "key"

    invoke-virtual {v3, p3, p2}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    new-instance p2, Lsun/security/x509/CertificateAlgorithmId;

    new-instance p3, Lsun/security/x509/AlgorithmId;

    sget-object p4, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p3, p4}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-direct {p2, p3}, Lsun/security/x509/CertificateAlgorithmId;-><init>(Lsun/security/x509/AlgorithmId;)V

    const-string p3, "algorithmID"

    invoke-virtual {v3, p3, p2}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    new-instance p2, Lsun/security/x509/X509CertImpl;

    invoke-direct {p2, v3}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/x509/X509CertInfo;)V

    const-string p3, "SHA256withRSA"

    .line 71
    invoke-virtual {p2, v2, p3}, Lsun/security/x509/X509CertImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;)V

    const-string p4, "x509.algorithm"

    .line 74
    invoke-virtual {p2, p4}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "algorithmID.algorithm"

    invoke-virtual {v3, p4, p2}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    new-instance p2, Lsun/security/x509/X509CertImpl;

    invoke-direct {p2, v3}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/x509/X509CertInfo;)V

    .line 76
    invoke-virtual {p2, v2, p3}, Lsun/security/x509/X509CertImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p2, p1}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    .line 79
    invoke-static {p0, v2, p2}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->newSelfSignedCertificate(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
