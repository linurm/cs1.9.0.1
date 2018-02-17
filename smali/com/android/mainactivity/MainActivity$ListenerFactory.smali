.class public abstract Lcom/android/mainactivity/MainActivity$ListenerFactory;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mainactivity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListenerFactory"
.end annotation


# static fields
.field private static _listener:Lcom/android/mainactivity/MainActivity$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListener()Lcom/android/mainactivity/MainActivity$Listener;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/mainactivity/MainActivity$ListenerFactory;->_listener:Lcom/android/mainactivity/MainActivity$Listener;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity$ListenerFactory;->makeListener()Lcom/android/mainactivity/MainActivity$Listener;

    move-result-object v0

    sput-object v0, Lcom/android/mainactivity/MainActivity$ListenerFactory;->_listener:Lcom/android/mainactivity/MainActivity$Listener;

    .line 84
    :cond_0
    sget-object v0, Lcom/android/mainactivity/MainActivity$ListenerFactory;->_listener:Lcom/android/mainactivity/MainActivity$Listener;

    return-object v0
.end method

.method protected abstract makeListener()Lcom/android/mainactivity/MainActivity$Listener;
.end method
