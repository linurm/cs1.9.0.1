.class public final enum Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;
.super Ljava/lang/Enum;
.source "NewIntentEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ideaworks3d/marmalade/NewIntentEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;

.field public static final enum NEWINTENT:Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;

    const-string v1, "NEWINTENT"

    invoke-direct {v0, v1, v2}, Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;->NEWINTENT:Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;

    .line 5
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;->NEWINTENT:Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;->$VALUES:[Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;

    return-object v0
.end method

.method public static values()[Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;->$VALUES:[Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;

    invoke-virtual {v0}, [Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;

    return-object v0
.end method
