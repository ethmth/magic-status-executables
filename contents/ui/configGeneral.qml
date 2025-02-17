import QtQuick 2.0
import QtQuick.Controls 2.5 as QQC2
// import QtQuick.Controls 1.0 as QtControls1
import QtQuick.Layouts 1.12
import org.kde.kirigami 2.4 as Kirigami
import org.kde.kcmutils as KCM

KCM.SimpleKCM {
  id: configPage

  signal configurationChanged

  property alias cfg_serverEndpoint: serverEndpoint.text
  property alias cfg_widthFactor: widthFactor.value
  property alias cfg_pullingInterval: pullingInterval.value

  Kirigami.FormLayout {
    QQC2.TextField {
      id: serverEndpoint
      Kirigami.FormData.label: i18n("Server Endpoint:")
      placeholderText: i18n("http://localhost:42145/")
    }

    QQC2.SpinBox {
      id: widthFactor
      Kirigami.FormData.label: i18n("Width Factor:")
      // decimals: 1
    }

    QQC2.SpinBox {
      id: pullingInterval
      Kirigami.FormData.label: i18n("Pulling Interval (seconds):")
      // decimals: 3
    }
  }
}