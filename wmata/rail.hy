;;
;;

(import [wmata.core [get-json]])


(defn station/prediction [line]
  (get-json "StationPrediction" (.format "GetPrediction/{}" line) {}))


(defn rail/incidents []
  (get-json "Incidents" "Incidents" {}))
