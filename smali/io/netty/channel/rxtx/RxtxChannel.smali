.class public Lio/netty/channel/rxtx/RxtxChannel;
.super Lio/netty/channel/oio/OioByteStreamChannel;
.source "RxtxChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/rxtx/RxtxChannel$RxtxUnsafe;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOCAL_ADDRESS:Lio/netty/channel/rxtx/RxtxDeviceAddress;


# instance fields
.field private final config:Lio/netty/channel/rxtx/RxtxChannelConfig;

.field private deviceAddress:Lio/netty/channel/rxtx/RxtxDeviceAddress;

.field private open:Z

.field private serialPort:Lgnu/io/SerialPort;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lio/netty/channel/rxtx/RxtxDeviceAddress;

    const-string v1, "localhost"

    invoke-direct {v0, v1}, Lio/netty/channel/rxtx/RxtxDeviceAddress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/channel/rxtx/RxtxChannel;->LOCAL_ADDRESS:Lio/netty/channel/rxtx/RxtxDeviceAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lio/netty/channel/oio/OioByteStreamChannel;-><init>(Lio/netty/channel/Channel;)V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->open:Z

    .line 56
    new-instance v0, Lio/netty/channel/rxtx/DefaultRxtxChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/rxtx/DefaultRxtxChannelConfig;-><init>(Lio/netty/channel/rxtx/RxtxChannel;)V

    iput-object v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->config:Lio/netty/channel/rxtx/RxtxChannelConfig;

    return-void
.end method


# virtual methods
.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->config()Lio/netty/channel/rxtx/RxtxChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/rxtx/RxtxChannelConfig;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->config:Lio/netty/channel/rxtx/RxtxChannelConfig;

    return-object v0
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected doClose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->open:Z

    const/4 v0, 0x0

    .line 132
    :try_start_0
    invoke-super {p0}, Lio/netty/channel/oio/OioByteStreamChannel;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v1, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Lgnu/io/SerialPort;->removeEventListener()V

    .line 136
    iget-object v1, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    invoke-virtual {v1}, Lgnu/io/SerialPort;->close()V

    .line 137
    iput-object v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 134
    iget-object v2, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    if-eqz v2, :cond_1

    .line 135
    iget-object v2, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    invoke-virtual {v2}, Lgnu/io/SerialPort;->removeEventListener()V

    .line 136
    iget-object v2, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    invoke-virtual {v2}, Lgnu/io/SerialPort;->close()V

    .line 137
    iput-object v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    .line 139
    :cond_1
    throw v1
.end method

.method protected doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    check-cast p1, Lio/netty/channel/rxtx/RxtxDeviceAddress;

    .line 77
    invoke-virtual {p1}, Lio/netty/channel/rxtx/RxtxDeviceAddress;->value()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lgnu/io/CommPortIdentifier;->getPortIdentifier(Ljava/lang/String;)Lgnu/io/CommPortIdentifier;

    move-result-object p2

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1}, Lgnu/io/CommPortIdentifier;->open(Ljava/lang/String;I)Lgnu/io/CommPort;

    move-result-object p2

    .line 79
    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->config()Lio/netty/channel/rxtx/RxtxChannelConfig;

    move-result-object v0

    sget-object v1, Lio/netty/channel/rxtx/RxtxChannelOption;->READ_TIMEOUT:Lio/netty/channel/ChannelOption;

    invoke-interface {v0, v1}, Lio/netty/channel/rxtx/RxtxChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lgnu/io/CommPort;->enableReceiveTimeout(I)V

    .line 80
    iput-object p1, p0, Lio/netty/channel/rxtx/RxtxChannel;->deviceAddress:Lio/netty/channel/rxtx/RxtxDeviceAddress;

    .line 82
    check-cast p2, Lgnu/io/SerialPort;

    iput-object p2, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    return-void
.end method

.method protected doDisconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->doClose()V

    return-void
.end method

.method protected doInit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    .line 87
    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->config()Lio/netty/channel/rxtx/RxtxChannelConfig;

    move-result-object v1

    sget-object v2, Lio/netty/channel/rxtx/RxtxChannelOption;->BAUD_RATE:Lio/netty/channel/ChannelOption;

    invoke-interface {v1, v2}, Lio/netty/channel/rxtx/RxtxChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 88
    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->config()Lio/netty/channel/rxtx/RxtxChannelConfig;

    move-result-object v2

    sget-object v3, Lio/netty/channel/rxtx/RxtxChannelOption;->DATA_BITS:Lio/netty/channel/ChannelOption;

    invoke-interface {v2, v3}, Lio/netty/channel/rxtx/RxtxChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/channel/rxtx/RxtxChannelConfig$Databits;

    invoke-virtual {v2}, Lio/netty/channel/rxtx/RxtxChannelConfig$Databits;->value()I

    move-result v2

    .line 89
    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->config()Lio/netty/channel/rxtx/RxtxChannelConfig;

    move-result-object v3

    sget-object v4, Lio/netty/channel/rxtx/RxtxChannelOption;->STOP_BITS:Lio/netty/channel/ChannelOption;

    invoke-interface {v3, v4}, Lio/netty/channel/rxtx/RxtxChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/channel/rxtx/RxtxChannelConfig$Stopbits;

    invoke-virtual {v3}, Lio/netty/channel/rxtx/RxtxChannelConfig$Stopbits;->value()I

    move-result v3

    .line 90
    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->config()Lio/netty/channel/rxtx/RxtxChannelConfig;

    move-result-object v4

    sget-object v5, Lio/netty/channel/rxtx/RxtxChannelOption;->PARITY_BIT:Lio/netty/channel/ChannelOption;

    invoke-interface {v4, v5}, Lio/netty/channel/rxtx/RxtxChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/channel/rxtx/RxtxChannelConfig$Paritybit;

    invoke-virtual {v4}, Lio/netty/channel/rxtx/RxtxChannelConfig$Paritybit;->value()I

    move-result v4

    .line 86
    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/io/SerialPort;->setSerialPortParams(IIII)V

    .line 92
    iget-object v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->config()Lio/netty/channel/rxtx/RxtxChannelConfig;

    move-result-object v1

    sget-object v2, Lio/netty/channel/rxtx/RxtxChannelOption;->DTR:Lio/netty/channel/ChannelOption;

    invoke-interface {v1, v2}, Lio/netty/channel/rxtx/RxtxChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/io/SerialPort;->setDTR(Z)V

    .line 93
    iget-object v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->config()Lio/netty/channel/rxtx/RxtxChannelConfig;

    move-result-object v1

    sget-object v2, Lio/netty/channel/rxtx/RxtxChannelOption;->RTS:Lio/netty/channel/ChannelOption;

    invoke-interface {v1, v2}, Lio/netty/channel/rxtx/RxtxChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/io/SerialPort;->setRTS(Z)V

    .line 95
    iget-object v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    invoke-virtual {v0}, Lgnu/io/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/rxtx/RxtxChannel;->serialPort:Lgnu/io/SerialPort;

    invoke-virtual {v1}, Lgnu/io/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/rxtx/RxtxChannel;->activate(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method protected isInputShutdown()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->open:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->open:Z

    return v0
.end method

.method public localAddress()Lio/netty/channel/rxtx/RxtxDeviceAddress;
    .locals 1

    .line 100
    invoke-super {p0}, Lio/netty/channel/oio/OioByteStreamChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/netty/channel/rxtx/RxtxDeviceAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->localAddress()Lio/netty/channel/rxtx/RxtxDeviceAddress;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Lio/netty/channel/rxtx/RxtxDeviceAddress;
    .locals 1

    .line 110
    sget-object v0, Lio/netty/channel/rxtx/RxtxChannel;->LOCAL_ADDRESS:Lio/netty/channel/rxtx/RxtxDeviceAddress;

    return-object v0
.end method

.method protected bridge synthetic localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->localAddress0()Lio/netty/channel/rxtx/RxtxDeviceAddress;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 2

    .line 71
    new-instance v0, Lio/netty/channel/rxtx/RxtxChannel$RxtxUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/rxtx/RxtxChannel$RxtxUnsafe;-><init>(Lio/netty/channel/rxtx/RxtxChannel;Lio/netty/channel/rxtx/RxtxChannel$1;)V

    return-object v0
.end method

.method public remoteAddress()Lio/netty/channel/rxtx/RxtxDeviceAddress;
    .locals 1

    .line 105
    invoke-super {p0}, Lio/netty/channel/oio/OioByteStreamChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/netty/channel/rxtx/RxtxDeviceAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->remoteAddress()Lio/netty/channel/rxtx/RxtxDeviceAddress;

    move-result-object v0

    return-object v0
.end method

.method protected remoteAddress0()Lio/netty/channel/rxtx/RxtxDeviceAddress;
    .locals 1

    .line 115
    iget-object v0, p0, Lio/netty/channel/rxtx/RxtxChannel;->deviceAddress:Lio/netty/channel/rxtx/RxtxDeviceAddress;

    return-object v0
.end method

.method protected bridge synthetic remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/rxtx/RxtxChannel;->remoteAddress0()Lio/netty/channel/rxtx/RxtxDeviceAddress;

    move-result-object v0

    return-object v0
.end method

.method protected shutdownInput()Lio/netty/channel/ChannelFuture;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "shutdownInput"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/netty/channel/rxtx/RxtxChannel;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
